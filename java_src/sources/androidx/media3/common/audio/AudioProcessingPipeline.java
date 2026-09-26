package androidx.media3.common.audio;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.a0;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class AudioProcessingPipeline {
    private final a0<AudioProcessor> audioProcessors;
    private boolean inputEnded;
    private AudioProcessor.AudioFormat outputAudioFormat;
    private AudioProcessor.AudioFormat pendingOutputAudioFormat;
    private final List<AudioProcessor> activeAudioProcessors = new ArrayList();
    private ByteBuffer[] outputBuffers = new ByteBuffer[0];

    private void g(ByteBuffer byteBuffer) {
        boolean z6;
        do {
            z6 = false;
            for (int i10 = 0; i10 <= c(); i10++) {
                if (!this.outputBuffers[i10].hasRemaining()) {
                    AudioProcessor audioProcessor = this.activeAudioProcessors.get(i10);
                    if (!audioProcessor.isEnded()) {
                        ByteBuffer byteBuffer2 = i10 > 0 ? this.outputBuffers[i10 - 1] : byteBuffer.hasRemaining() ? byteBuffer : AudioProcessor.EMPTY_BUFFER;
                        long jRemaining = byteBuffer2.remaining();
                        audioProcessor.queueInput(byteBuffer2);
                        this.outputBuffers[i10] = audioProcessor.getOutput();
                        z6 |= jRemaining - ((long) byteBuffer2.remaining()) > 0 || this.outputBuffers[i10].hasRemaining();
                    } else if (!this.outputBuffers[i10].hasRemaining() && i10 < c()) {
                        this.activeAudioProcessors.get(i10 + 1).queueEndOfStream();
                    }
                }
            }
        } while (z6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioProcessingPipeline)) {
            return false;
        }
        AudioProcessingPipeline audioProcessingPipeline = (AudioProcessingPipeline) obj;
        if (this.audioProcessors.size() != audioProcessingPipeline.audioProcessors.size()) {
            return false;
        }
        for (int i10 = 0; i10 < this.audioProcessors.size(); i10++) {
            if (this.audioProcessors.get(i10) != audioProcessingPipeline.audioProcessors.get(i10)) {
                return false;
            }
        }
        return true;
    }

    public void j() {
        for (int i10 = 0; i10 < this.audioProcessors.size(); i10++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i10);
            audioProcessor.flush();
            audioProcessor.reset();
        }
        this.outputBuffers = new ByteBuffer[0];
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.outputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputEnded = false;
    }

    private int c() {
        return this.outputBuffers.length - 1;
    }

    public AudioProcessor.AudioFormat a(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.equals(AudioProcessor.AudioFormat.NOT_SET)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        for (int i10 = 0; i10 < this.audioProcessors.size(); i10++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i10);
            AudioProcessor.AudioFormat audioFormatA = audioProcessor.a(audioFormat);
            if (audioProcessor.isActive()) {
                Assertions.g(!audioFormatA.equals(AudioProcessor.AudioFormat.NOT_SET));
                audioFormat = audioFormatA;
            }
        }
        this.pendingOutputAudioFormat = audioFormat;
        return audioFormat;
    }

    public void b() {
        this.activeAudioProcessors.clear();
        this.outputAudioFormat = this.pendingOutputAudioFormat;
        this.inputEnded = false;
        for (int i10 = 0; i10 < this.audioProcessors.size(); i10++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i10);
            audioProcessor.flush();
            if (audioProcessor.isActive()) {
                this.activeAudioProcessors.add(audioProcessor);
            }
        }
        this.outputBuffers = new ByteBuffer[this.activeAudioProcessors.size()];
        for (int i11 = 0; i11 <= c(); i11++) {
            this.outputBuffers[i11] = this.activeAudioProcessors.get(i11).getOutput();
        }
    }

    public boolean e() {
        return this.inputEnded && this.activeAudioProcessors.get(c()).isEnded() && !this.outputBuffers[c()].hasRemaining();
    }

    public boolean f() {
        return !this.activeAudioProcessors.isEmpty();
    }

    public int hashCode() {
        return this.audioProcessors.hashCode();
    }

    public AudioProcessingPipeline(a0<AudioProcessor> a0Var) {
        this.audioProcessors = a0Var;
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.outputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputEnded = false;
    }

    public ByteBuffer d() {
        if (!f()) {
            return AudioProcessor.EMPTY_BUFFER;
        }
        ByteBuffer byteBuffer = this.outputBuffers[c()];
        if (!byteBuffer.hasRemaining()) {
            g(AudioProcessor.EMPTY_BUFFER);
        }
        return byteBuffer;
    }

    public void h() {
        if (f() && !this.inputEnded) {
            this.inputEnded = true;
            this.activeAudioProcessors.get(0).queueEndOfStream();
        }
    }

    public void i(ByteBuffer byteBuffer) {
        if (f() && !this.inputEnded) {
            g(byteBuffer);
        }
    }
}
