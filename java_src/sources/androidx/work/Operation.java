package androidx.work;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.common.util.concurrent.k;

/* JADX INFO: loaded from: classes5.dex */
public interface Operation {

    @SuppressLint({"SyntheticAccessor"})
    @RestrictTo
    public static final State.IN_PROGRESS IN_PROGRESS;

    @SuppressLint({"SyntheticAccessor"})
    @RestrictTo
    public static final State.SUCCESS SUCCESS;

    @NonNull
    k<State.SUCCESS> a();

    public static abstract class State {

        public static final class FAILURE extends State {
            private final Throwable mThrowable;

            @NonNull
            public Throwable a() {
                return this.mThrowable;
            }

            @NonNull
            public String toString() {
                return "FAILURE (" + this.mThrowable.getMessage() + ")";
            }

            public FAILURE(@NonNull Throwable exception) {
                this.mThrowable = exception;
            }
        }

        public static final class IN_PROGRESS extends State {
            @NonNull
            public String toString() {
                return "IN_PROGRESS";
            }

            private IN_PROGRESS() {
            }
        }

        public static final class SUCCESS extends State {
            @NonNull
            public String toString() {
                return "SUCCESS";
            }

            private SUCCESS() {
            }
        }

        @RestrictTo
        State() {
        }
    }

    static {
        SUCCESS = new State.SUCCESS();
        IN_PROGRESS = new State.IN_PROGRESS();
    }
}
