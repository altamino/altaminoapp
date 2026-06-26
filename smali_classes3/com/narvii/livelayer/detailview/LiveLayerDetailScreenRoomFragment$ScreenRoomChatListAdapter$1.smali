.class Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;
.super Ljava/lang/Object;
.source "LiveLayerDetailScreenRoomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;

.field final synthetic val$playing:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;Landroid/widget/TextView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;->this$1:Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter;

    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;->val$playing:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailScreenRoomFragment$ScreenRoomChatListAdapter$1;->val$playing:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
