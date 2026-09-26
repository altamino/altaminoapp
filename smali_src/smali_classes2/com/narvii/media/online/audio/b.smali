.class public final synthetic Lcom/narvii/media/online/audio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/online/audio/b;->a:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    iput-object p2, p0, Lcom/narvii/media/online/audio/b;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/media/online/audio/b;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/media/online/audio/b;->a:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;

    iget-object v1, p0, Lcom/narvii/media/online/audio/b;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/narvii/media/online/audio/b;->c:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->t(Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
