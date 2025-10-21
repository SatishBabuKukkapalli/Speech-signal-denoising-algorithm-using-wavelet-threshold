clc; clear; close all;

% 1. Load or simulate speech signal
% You can record your own using: audiorecorder()
% Here we generate a sample sine wave as speech
fs = 8000;                     % Sampling frequency
t = 0:1/fs:1;                  
speech = sin(2*pi*200*t) + sin(2*pi*400*t);

% 2. Add noise
noise = 0.3*randn(size(speech));
noisy_signal = speech + noise;

% 3. Choose wavelet
wname = 'db8';    % Daubechies wavelet

% 4. Perform 3-level wavelet decomposition
level = 3;
[C, L] = wavedec(noisy_signal, level, wname);

% 5. Compute universal threshold
sigma = median(abs(C)) / 0.6745;
threshold = sigma * sqrt(2*log(length(noisy_signal)));

% 6. Apply soft thresholding
C_thresh = wthcoef('t', C, L, 1:level, threshold, 's');

% 7. Reconstruct denoised signal
denoised_signal = waverec(C_thresh, L, wname);

% 8. Plot results
figure;
subplot(3,1,1);
plot(t, speech); title('Original Speech Signal'); xlabel('Time (s)'); ylabel('Amplitude');

subplot(3,1,2);
plot(t, noisy_signal); title('Noisy Speech Signal'); xlabel('Time (s)'); ylabel('Amplitude');

subplot(3,1,3);
plot(t, denoised_signal); title('Denoised Speech Signal'); xlabel('Time (s)'); ylabel('Amplitude');

% 9. Play audio (optional)
% sound(denoised_signal, fs);

% 10. Compare using SNR
snr_noisy = snr(speech, noisy_signal - speech);
snr_denoised = snr(speech, denoised_signal - speech);
fprintf('SNR before denoising: %.2f dB\n', snr_noisy);
fprintf('SNR after denoising : %.2f dB\n', snr_denoised);
