.class public final synthetic Lcom/narvii/chat/video/layout/-$$Lambda$VoicePresenterLayout$nJq8uFrSfOSh662-G5raDrcL3JI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

.field private final synthetic f$1:Lcom/narvii/chat/video/layout/VoicePresenterItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/layout/VoicePresenterLayout;Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/-$$Lambda$VoicePresenterLayout$nJq8uFrSfOSh662-G5raDrcL3JI;->f$0:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/-$$Lambda$VoicePresenterLayout$nJq8uFrSfOSh662-G5raDrcL3JI;->f$1:Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/chat/video/layout/-$$Lambda$VoicePresenterLayout$nJq8uFrSfOSh662-G5raDrcL3JI;->f$0:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/layout/-$$Lambda$VoicePresenterLayout$nJq8uFrSfOSh662-G5raDrcL3JI;->f$1:Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->lambda$configListener$0$VoicePresenterLayout(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Landroid/view/View;)V

    return-void
.end method
