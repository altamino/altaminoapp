package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.os.Bundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements com.google.android.exoplayer2.h {
    private static final int FIELD_ALLOWED_CAPTURE_POLICY = 3;
    private static final int FIELD_CONTENT_TYPE = 0;
    private static final int FIELD_FLAGS = 1;
    private static final int FIELD_SPATIALIZATION_BEHAVIOR = 4;
    private static final int FIELD_USAGE = 2;
    public final int allowedCapturePolicy;

    @Nullable
    private d audioAttributesV21;
    public final int contentType;
    public final int flags;
    public final int spatializationBehavior;
    public final int usage;
    public static final e DEFAULT = new C0165e().a();
    public static final com.google.android.exoplayer2.h.a<e> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.audio.d
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            return e.d(bundle);
        }
    };

    @RequiresApi
    public static final class d {
        public final AudioAttributes audioAttributes;

        private d(e eVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(eVar.contentType).setFlags(eVar.flags).setUsage(eVar.usage);
            int i10 = com.google.android.exoplayer2.util.o0.SDK_INT;
            if (i10 >= 29) {
                b.a(usage, eVar.allowedCapturePolicy);
            }
            if (i10 >= 32) {
                c.a(usage, eVar.spatializationBehavior);
            }
            this.audioAttributes = usage.build();
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.audio.e$e, reason: collision with other inner class name */
    public static final class C0165e {
        private int contentType = 0;
        private int flags = 0;
        private int usage = 1;
        private int allowedCapturePolicy = 1;
        private int spatializationBehavior = 0;

        public C0165e b(int i10) {
            this.allowedCapturePolicy = i10;
            return this;
        }

        public C0165e c(int i10) {
            this.contentType = i10;
            return this;
        }

        public C0165e d(int i10) {
            this.flags = i10;
            return this;
        }

        public C0165e e(int i10) {
            this.spatializationBehavior = i10;
            return this;
        }

        public C0165e f(int i10) {
            this.usage = i10;
            return this;
        }

        public e a() {
            return new e(this.contentType, this.flags, this.usage, this.allowedCapturePolicy, this.spatializationBehavior);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.contentType == eVar.contentType && this.flags == eVar.flags && this.usage == eVar.usage && this.allowedCapturePolicy == eVar.allowedCapturePolicy && this.spatializationBehavior == eVar.spatializationBehavior;
    }

    public int hashCode() {
        return ((((((((527 + this.contentType) * 31) + this.flags) * 31) + this.usage) * 31) + this.allowedCapturePolicy) * 31) + this.spatializationBehavior;
    }

    @RequiresApi
    private static final class b {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setAllowedCapturePolicy(i10);
        }
    }

    @RequiresApi
    private static final class c {
        @DoNotInline
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setSpatializationBehavior(i10);
        }
    }

    private e(int i10, int i11, int i12, int i13, int i14) {
        this.contentType = i10;
        this.flags = i11;
        this.usage = i12;
        this.allowedCapturePolicy = i13;
        this.spatializationBehavior = i14;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e d(Bundle bundle) {
        C0165e c0165e = new C0165e();
        if (bundle.containsKey(c(0))) {
            c0165e.c(bundle.getInt(c(0)));
        }
        if (bundle.containsKey(c(1))) {
            c0165e.d(bundle.getInt(c(1)));
        }
        if (bundle.containsKey(c(2))) {
            c0165e.f(bundle.getInt(c(2)));
        }
        if (bundle.containsKey(c(3))) {
            c0165e.b(bundle.getInt(c(3)));
        }
        if (bundle.containsKey(c(4))) {
            c0165e.e(bundle.getInt(c(4)));
        }
        return c0165e.a();
    }

    @RequiresApi
    public d b() {
        if (this.audioAttributesV21 == null) {
            this.audioAttributesV21 = new d();
        }
        return this.audioAttributesV21;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), this.contentType);
        bundle.putInt(c(1), this.flags);
        bundle.putInt(c(2), this.usage);
        bundle.putInt(c(3), this.allowedCapturePolicy);
        bundle.putInt(c(4), this.spatializationBehavior);
        return bundle;
    }
}
