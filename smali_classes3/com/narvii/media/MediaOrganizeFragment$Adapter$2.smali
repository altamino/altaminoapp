.class Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;
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

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$media:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaOrganizeFragment$Adapter;Lcom/narvii/model/Media;Landroid/widget/EditText;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;->val$media:Lcom/narvii/model/Media;

    iput-object p3, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 339
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;->val$media:Lcom/narvii/model/Media;

    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 340
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$2;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
