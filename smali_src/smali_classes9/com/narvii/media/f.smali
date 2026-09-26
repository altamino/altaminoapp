.class public final synthetic Lcom/narvii/media/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/media/SaveImageFragment;

.field public final synthetic b:Lcom/android/volley/Request;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/f;->a:Lcom/narvii/media/SaveImageFragment;

    iput-object p2, p0, Lcom/narvii/media/f;->b:Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/media/f;->a:Lcom/narvii/media/SaveImageFragment;

    iget-object v1, p0, Lcom/narvii/media/f;->b:Lcom/android/volley/Request;

    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageFragment;->o(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V

    return-void
.end method
