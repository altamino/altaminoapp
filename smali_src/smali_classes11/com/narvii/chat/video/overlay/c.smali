.class public final synthetic Lcom/narvii/chat/video/overlay/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/c;->a:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/c;->a:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->t(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Landroid/view/View;)V

    return-void
.end method
