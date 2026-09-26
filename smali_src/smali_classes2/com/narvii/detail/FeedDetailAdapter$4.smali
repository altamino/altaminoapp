.class Lcom/narvii/detail/FeedDetailAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailAdapter$4;->this$0:Lcom/narvii/detail/FeedDetailAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/detail/FeedDetailAdapter$4;->val$fragment:Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "EngagementArea"

    .line 3
    .line 4
    sput-object v0, Lcom/narvii/logging/LogUtils;->optionMenuClickArea:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailAdapter$4;->val$fragment:Lcom/narvii/app/NVFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
