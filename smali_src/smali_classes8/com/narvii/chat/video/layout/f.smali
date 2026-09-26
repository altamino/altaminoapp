.class public final synthetic Lcom/narvii/chat/video/layout/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

.field public final synthetic b:Lcom/narvii/chat/video/layout/VoicePresenterItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/layout/VoicePresenterLayout;Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/f;->a:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/f;->b:Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/f;->a:Lcom/narvii/chat/video/layout/VoicePresenterLayout;

    iget-object v1, p0, Lcom/narvii/chat/video/layout/f;->b:Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->a(Lcom/narvii/chat/video/layout/VoicePresenterLayout;Lcom/narvii/chat/video/layout/VoicePresenterItemView;Landroid/view/View;)V

    return-void
.end method
