.class public final synthetic Lcom/narvii/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/c;->a:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/util/c;->a:Lcom/narvii/util/Callback;

    invoke-static {v0, p1}, Lcom/narvii/util/DeepLinkManager;->b(Lcom/narvii/util/Callback;Ljava/lang/Exception;)V

    return-void
.end method
