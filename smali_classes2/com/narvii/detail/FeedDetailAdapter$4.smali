.class Lcom/narvii/detail/FeedDetailAdapter$4;
.super Ljava/lang/Object;
.source "FeedDetailAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailAdapter;

.field final synthetic val$fragment:Lcom/narvii/app/NVFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailAdapter;Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$4;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    iput-object p2, p0, Lcom/narvii/detail/FeedDetailAdapter$4;->val$fragment:Lcom/narvii/app/NVFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "EngagementArea"

    .line 272
    sput-object v0, Lcom/narvii/logging/LogUtils;->optionMenuClickArea:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter$4;->val$fragment:Lcom/narvii/app/NVFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
