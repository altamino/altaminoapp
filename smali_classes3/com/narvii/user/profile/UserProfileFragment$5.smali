.class Lcom/narvii/user/profile/UserProfileFragment$5;
.super Lcom/narvii/bookmark/BookmarkAdapter;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$5;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0, p2}, Lcom/narvii/bookmark/BookmarkAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public showListEnd(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
