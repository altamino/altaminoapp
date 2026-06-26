.class public final Lcom/narvii/community/AggregationBaseFragment$fragments$1;
.super Landroid/util/LruCache;
.source "AggregationBaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/AggregationBaseFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Lcom/narvii/app/NVFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/AggregationBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/community/AggregationBaseFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$fragments$1;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Lcom/narvii/app/NVFragment;Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 46
    iget-object p1, p0, Lcom/narvii/community/AggregationBaseFragment$fragments$1;->this$0:Lcom/narvii/community/AggregationBaseFragment;

    invoke-static {p1, p3}, Lcom/narvii/community/AggregationBaseFragment;->access$removeCommunityFragment(Lcom/narvii/community/AggregationBaseFragment;Lcom/narvii/app/NVFragment;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/narvii/app/NVFragment;

    check-cast p4, Lcom/narvii/app/NVFragment;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/community/AggregationBaseFragment$fragments$1;->entryRemoved(ZLjava/lang/Integer;Lcom/narvii/app/NVFragment;Lcom/narvii/app/NVFragment;)V

    return-void
.end method
