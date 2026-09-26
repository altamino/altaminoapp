.class public final synthetic Lcom/google/firebase/crashlytics/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/h;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/f;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/components/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/f;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Lcom/google/firebase/components/e;)Lcom/google/firebase/crashlytics/g;

    move-result-object p1

    return-object p1
.end method
