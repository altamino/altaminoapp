.class Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$2;
.super Ljava/lang/Object;
.source "GlobalRecommendedUsersFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->doSubmit()V
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
.field final synthetic this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$2;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$2;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 122
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
