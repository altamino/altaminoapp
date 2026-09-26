.class public final synthetic Lcom/google/firebase/crashlytics/internal/metadata/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/internal/metadata/n;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/metadata/n;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/metadata/l;->a:Lcom/google/firebase/crashlytics/internal/metadata/n;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/metadata/l;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/metadata/l;->a:Lcom/google/firebase/crashlytics/internal/metadata/n;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/metadata/l;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/metadata/n;->b(Lcom/google/firebase/crashlytics/internal/metadata/n;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
