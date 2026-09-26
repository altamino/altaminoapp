package com.narvii.wallet;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BillingState {

    public static final class Connected extends BillingState {

        @NotNull
        public static final Connected INSTANCE = new Connected();

        private Connected() {
            super(null);
        }
    }

    public static final class Connecting extends BillingState {

        @NotNull
        public static final Connecting INSTANCE = new Connecting();

        private Connecting() {
            super(null);
        }
    }

    public static final class Idle extends BillingState {

        @NotNull
        public static final Idle INSTANCE = new Idle();

        private Idle() {
            super(null);
        }
    }

    public /* synthetic */ BillingState(kotlin.jvm.internal.k kVar) {
        this();
    }

    private BillingState() {
    }

    public final boolean isConnected() {
        return this instanceof Connected;
    }
}
