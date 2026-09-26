.class Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->sendPrivateChatRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter$1;->this$0:Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/UserListResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter$1;->this$0:Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;

    .line 2
    iget p1, p1, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    iput p1, v0, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter;->privateChatCount:I

    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/category/OnlineCategoryMemberAdapter$1;->call(Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method
