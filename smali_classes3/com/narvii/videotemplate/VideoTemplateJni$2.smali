.class final Lcom/narvii/videotemplate/VideoTemplateJni$2;
.super Ljava/lang/Object;
.source "VideoTemplateJni.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateJni;->onFinishFromNative()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->access$100()Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onFinish()V

    return-void
.end method
