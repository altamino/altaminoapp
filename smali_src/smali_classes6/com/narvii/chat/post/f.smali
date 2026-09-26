.class public final synthetic Lcom/narvii/chat/post/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/suggest/interest/ThreadPostTopicView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/suggest/interest/ThreadPostTopicView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/post/f;->a:Lcom/narvii/suggest/interest/ThreadPostTopicView;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/post/f;->a:Lcom/narvii/suggest/interest/ThreadPostTopicView;

    invoke-static {v0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->E(Lcom/narvii/suggest/interest/ThreadPostTopicView;Landroid/content/DialogInterface;)V

    return-void
.end method
