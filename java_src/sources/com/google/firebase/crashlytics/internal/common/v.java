package com.google.firebase.crashlytics.internal.common;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
class v implements Thread.UncaughtExceptionHandler {
    private final a crashListener;
    private final Thread.UncaughtExceptionHandler defaultHandler;
    private final AtomicBoolean isHandlingException = new AtomicBoolean(false);
    private final com.google.firebase.crashlytics.internal.a nativeComponent;
    private final com.google.firebase.crashlytics.internal.settings.i settingsProvider;

    interface a {
        void a(com.google.firebase.crashlytics.internal.settings.i iVar, Thread thread, Throwable th);
    }

    private boolean b(Thread thread, Throwable th) {
        if (thread == null) {
            com.google.firebase.crashlytics.internal.g.f().d("Crashlytics will not record uncaught exception; null thread");
            return false;
        }
        if (th == null) {
            com.google.firebase.crashlytics.internal.g.f().d("Crashlytics will not record uncaught exception; null throwable");
            return false;
        }
        if (!this.nativeComponent.c()) {
            return true;
        }
        com.google.firebase.crashlytics.internal.g.f().b("Crashlytics will not record uncaught exception; native crash exists for session.");
        return false;
    }

    boolean a() {
        return this.isHandlingException.get();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.isHandlingException.set(true);
        try {
            try {
                if (b(thread, th)) {
                    this.crashListener.a(this.settingsProvider, thread, th);
                } else {
                    com.google.firebase.crashlytics.internal.g.f().b("Uncaught exception will not be recorded by Crashlytics.");
                }
            } catch (Exception e) {
                com.google.firebase.crashlytics.internal.g.f().e("An error occurred in the uncaught exception handler", e);
            }
        } finally {
            com.google.firebase.crashlytics.internal.g.f().b("Completed exception processing. Invoking default exception handler.");
            this.defaultHandler.uncaughtException(thread, th);
            this.isHandlingException.set(false);
        }
    }

    public v(a aVar, com.google.firebase.crashlytics.internal.settings.i iVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, com.google.firebase.crashlytics.internal.a aVar2) {
        this.crashListener = aVar;
        this.settingsProvider = iVar;
        this.defaultHandler = uncaughtExceptionHandler;
        this.nativeComponent = aVar2;
    }
}
