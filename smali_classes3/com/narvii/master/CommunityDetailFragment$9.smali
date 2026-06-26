.class Lcom/narvii/master/CommunityDetailFragment$9;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->updateAccountRelatedViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 959
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$9;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 962
    new-instance p1, Lcom/narvii/account/LogoutHelper;

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$9;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p1, v0}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$9$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$9$1;-><init>(Lcom/narvii/master/CommunityDetailFragment$9;)V

    invoke-virtual {p1, v0}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    return-void
.end method
