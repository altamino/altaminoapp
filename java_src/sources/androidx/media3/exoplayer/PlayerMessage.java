package androidx.media3.exoplayer;

import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class PlayerMessage {
    private final Clock clock;
    private boolean isCanceled;
    private boolean isDelivered;
    private boolean isProcessed;
    private boolean isSent;
    private Looper looper;
    private int mediaItemIndex;

    @Nullable
    private Object payload;
    private final Sender sender;
    private final Target target;
    private final Timeline timeline;
    private int type;
    private long positionMs = -9223372036854775807L;
    private boolean deleteAfterDelivery = true;

    public interface Sender {
        void c(PlayerMessage playerMessage);
    }

    public interface Target {
        void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException;
    }

    public synchronized boolean a(long j6) throws InterruptedException, TimeoutException {
        boolean z6;
        try {
            Assertions.g(this.isSent);
            Assertions.g(this.looper.getThread() != Thread.currentThread());
            long jElapsedRealtime = this.clock.elapsedRealtime() + j6;
            while (true) {
                z6 = this.isProcessed;
                if (z6 || j6 <= 0) {
                    break;
                }
                this.clock.a();
                wait(j6);
                j6 = jElapsedRealtime - this.clock.elapsedRealtime();
            }
            if (!z6) {
                throw new TimeoutException("Message delivery timed out.");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isDelivered;
    }

    public boolean b() {
        return this.deleteAfterDelivery;
    }

    public Looper c() {
        return this.looper;
    }

    public int d() {
        return this.mediaItemIndex;
    }

    @Nullable
    public Object e() {
        return this.payload;
    }

    public long f() {
        return this.positionMs;
    }

    public Target g() {
        return this.target;
    }

    public Timeline h() {
        return this.timeline;
    }

    public int i() {
        return this.type;
    }

    public synchronized boolean j() {
        return this.isCanceled;
    }

    public synchronized void k(boolean z6) {
        this.isDelivered = z6 | this.isDelivered;
        this.isProcessed = true;
        notifyAll();
    }

    public PlayerMessage l() {
        Assertions.g(!this.isSent);
        if (this.positionMs == -9223372036854775807L) {
            Assertions.a(this.deleteAfterDelivery);
        }
        this.isSent = true;
        this.sender.c(this);
        return this;
    }

    public PlayerMessage m(@Nullable Object obj) {
        Assertions.g(!this.isSent);
        this.payload = obj;
        return this;
    }

    public PlayerMessage n(int i10) {
        Assertions.g(!this.isSent);
        this.type = i10;
        return this;
    }

    public PlayerMessage(Sender sender, Target target, Timeline timeline, int i10, Clock clock, Looper looper) {
        this.sender = sender;
        this.target = target;
        this.timeline = timeline;
        this.looper = looper;
        this.clock = clock;
        this.mediaItemIndex = i10;
    }
}
