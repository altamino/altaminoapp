.class final Lcom/narvii/videotemplate/VideoTemplateJni$1;
.super Ljava/lang/Object;
.source "VideoTemplateJni.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateJni;->onErrorFromNative(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errorType:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/narvii/videotemplate/VideoTemplateJni$1;->val$errorType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->access$100()Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    move-result-object v0

    iget v1, p0, Lcom/narvii/videotemplate/VideoTemplateJni$1;->val$errorType:I

    invoke-interface {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    return-void
.end method
