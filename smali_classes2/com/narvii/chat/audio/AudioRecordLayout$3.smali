.class Lcom/narvii/chat/audio/AudioRecordLayout$3;
.super Ljava/lang/Object;
.source "AudioRecordLayout.java"

# interfaces
.implements Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/audio/AudioRecordLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/audio/AudioRecordLayout;


# direct methods
.method constructor <init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout$3;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChange(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout$3;->this$0:Lcom/narvii/chat/audio/AudioRecordLayout;

    invoke-static {v0, p1}, Lcom/narvii/chat/audio/AudioRecordLayout;->access$200(Lcom/narvii/chat/audio/AudioRecordLayout;I)V

    return-void
.end method
