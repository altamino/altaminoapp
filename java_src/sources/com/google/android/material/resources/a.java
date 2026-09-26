package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public final class a extends f {
    private final InterfaceC0207a applyFont;
    private boolean cancelled;
    private final Typeface fallbackFont;

    /* JADX INFO: renamed from: com.google.android.material.resources.a$a, reason: collision with other inner class name */
    public interface InterfaceC0207a {
        void a(Typeface typeface);
    }

    public void c() {
        this.cancelled = true;
    }

    private void d(Typeface typeface) {
        if (this.cancelled) {
            return;
        }
        this.applyFont.a(typeface);
    }

    @Override // com.google.android.material.resources.f
    public void a(int i10) {
        d(this.fallbackFont);
    }

    public a(InterfaceC0207a interfaceC0207a, Typeface typeface) {
        this.fallbackFont = typeface;
        this.applyFont = interfaceC0207a;
    }

    @Override // com.google.android.material.resources.f
    public void b(Typeface typeface, boolean z6) {
        d(typeface);
    }
}
