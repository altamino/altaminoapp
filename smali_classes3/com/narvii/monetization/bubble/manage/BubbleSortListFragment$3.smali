.class Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;
.super Ljava/lang/Object;
.source "BubbleSortListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->saveChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 139
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
