.class public final Lcom/narvii/nested/CoordinateTabFragment$observer$1;
.super Landroid/database/DataSetObserver;
.source "CoordinateTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nested/CoordinateTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nested/CoordinateTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment$observer$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 276
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 277
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment$observer$1;->this$0:Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
