.class Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;
.super Ljava/lang/Object;
.source "MediaOrganizeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaOrganizeFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

.field final synthetic val$allowCover:Z

.field final synthetic val$media:Lcom/narvii/model/Media;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ZLcom/narvii/model/Media;I)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    iput-boolean p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$allowCover:Z

    iput-object p3, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    iput p4, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 296
    iget-boolean p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$allowCover:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    iget p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$position:I

    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    invoke-static {p1, p2, v0}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->access$200(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ILcom/narvii/model/Media;)V

    goto :goto_1

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    invoke-static {p1, p2}, Lcom/narvii/media/MediaOrganizeFragment;->access$100(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 300
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    goto :goto_0

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    iput-object p2, p1, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    .line 304
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_1

    .line 314
    :cond_4
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    iget p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$position:I

    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    invoke-static {p1, p2, v0}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->access$200(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ILcom/narvii/model/Media;)V

    :goto_1
    return-void
.end method
