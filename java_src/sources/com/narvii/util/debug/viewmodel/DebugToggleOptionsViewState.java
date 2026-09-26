package com.narvii.util.debug.viewmodel;

import com.narvii.util.debug.model.FailAttestation;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DebugToggleOptionsViewState {

    public static final class Error extends DebugToggleOptionsViewState {

        @NotNull
        private final Throwable error;

        public static /* synthetic */ Error copy$default(Error error, Throwable th, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                th = error.error;
            }
            return error.copy(th);
        }

        @NotNull
        public final Throwable component1() {
            return this.error;
        }

        @NotNull
        public final Error copy(@NotNull Throwable error) {
            t.j(error, "error");
            return new Error(error);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Error) && t.e(this.error, ((Error) obj).error);
        }

        @NotNull
        public final Throwable getError() {
            return this.error;
        }

        public int hashCode() {
            return this.error.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(error=" + this.error + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(@NotNull Throwable error) {
            super(null);
            t.j(error, "error");
            this.error = error;
        }
    }

    public static final class Loading extends DebugToggleOptionsViewState {

        @NotNull
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(null);
        }
    }

    public static final class Success extends DebugToggleOptionsViewState {

        @NotNull
        private final FailAttestation failAttestation;

        public static /* synthetic */ Success copy$default(Success success, FailAttestation failAttestation, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                failAttestation = success.failAttestation;
            }
            return success.copy(failAttestation);
        }

        @NotNull
        public final FailAttestation component1() {
            return this.failAttestation;
        }

        @NotNull
        public final Success copy(@NotNull FailAttestation failAttestation) {
            t.j(failAttestation, "failAttestation");
            return new Success(failAttestation);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && t.e(this.failAttestation, ((Success) obj).failAttestation);
        }

        @NotNull
        public final FailAttestation getFailAttestation() {
            return this.failAttestation;
        }

        public int hashCode() {
            return this.failAttestation.hashCode();
        }

        @NotNull
        public String toString() {
            return "Success(failAttestation=" + this.failAttestation + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(@NotNull FailAttestation failAttestation) {
            super(null);
            t.j(failAttestation, "failAttestation");
            this.failAttestation = failAttestation;
        }
    }

    public /* synthetic */ DebugToggleOptionsViewState(k kVar) {
        this();
    }

    private DebugToggleOptionsViewState() {
    }
}
