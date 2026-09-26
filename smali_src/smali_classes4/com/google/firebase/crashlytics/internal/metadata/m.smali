.class public final synthetic Lcom/google/firebase/crashlytics/internal/metadata/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/internal/metadata/n$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/metadata/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/m;->a:Lcom/google/firebase/crashlytics/internal/metadata/n$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/m;->a:Lcom/google/firebase/crashlytics/internal/metadata/n$a;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/metadata/n$a;->a(Lcom/google/firebase/crashlytics/internal/metadata/n$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
