.class public final synthetic Lcom/narvii/media/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic a:Lcom/narvii/media/SaveImageFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/g;->a:Lcom/narvii/media/SaveImageFragment;

    iput-object p2, p0, Lcom/narvii/media/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/media/g;->a:Lcom/narvii/media/SaveImageFragment;

    iget-object v1, p0, Lcom/narvii/media/g;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/narvii/media/SaveImageFragment;->n(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method
