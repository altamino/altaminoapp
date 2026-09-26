.class Lcom/narvii/master/MasterTabFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterTabFragment$2;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/MasterTabFragment$2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTabFragment$2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterTabFragment$2$1;->this$1:Lcom/narvii/master/MasterTabFragment$2;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/master/MasterTabFragment$2$1;->val$position:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$2$1;->this$1:Lcom/narvii/master/MasterTabFragment$2;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/master/MasterTabFragment$2$1;->val$position:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/master/MasterTopOffsetAdapter;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    move-object v1, v0

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/master/MasterTopOffsetAdapter;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Lcom/narvii/master/MasterTopOffsetAdapter;->resetOffset()V

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$2$1;->this$1:Lcom/narvii/master/MasterTabFragment$2;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 28
    .line 29
    iget v2, p0, Lcom/narvii/master/MasterTabFragment$2$1;->val$position:I

    .line 30
    const/4 v3, 0x4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eq v2, v3, :cond_1

    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v1

    .line 40
    .line 41
    :goto_0
    iput-boolean v2, v0, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    instance-of v2, v0, Lcom/narvii/master/MasterTopBarAvailable;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment$2$1;->this$1:Lcom/narvii/master/MasterTabFragment$2;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/master/MasterTopBarAvailable;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/narvii/master/MasterTopBarAvailable;->isTopBarAvailable()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    iput-boolean v0, v2, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 59
    .line 60
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/master/MasterTabFragment$2$1;->this$1:Lcom/narvii/master/MasterTabFragment$2;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/narvii/master/MasterTabFragment;->u(Lcom/narvii/master/MasterTabFragment;)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/master/MasterTabFragment$2$1;->this$1:Lcom/narvii/master/MasterTabFragment$2;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/narvii/master/MasterTabFragment$2;->this$0:Lcom/narvii/master/MasterTabFragment;

    .line 71
    .line 72
    iget-boolean v2, v2, Lcom/narvii/master/MasterTabFragment;->isTopBarAvailable:Z

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_4
    const/16 v1, 0x8

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    return-void
.end method
