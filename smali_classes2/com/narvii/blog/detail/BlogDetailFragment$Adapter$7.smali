.class Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$7;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 1770
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$7;->this$1:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$7;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1773
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter$7;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
