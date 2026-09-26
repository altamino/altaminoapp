.class public final synthetic Lcom/narvii/account/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/PushSettingListFragment$2;

.field public final synthetic b:Lcom/narvii/master/setting/CommunityPushResponse;

.field public final synthetic c:[I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/j0;->a:Lcom/narvii/account/PushSettingListFragment$2;

    iput-object p2, p0, Lcom/narvii/account/j0;->b:Lcom/narvii/master/setting/CommunityPushResponse;

    iput-object p3, p0, Lcom/narvii/account/j0;->c:[I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/account/j0;->a:Lcom/narvii/account/PushSettingListFragment$2;

    iget-object v1, p0, Lcom/narvii/account/j0;->b:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v2, p0, Lcom/narvii/account/j0;->c:[I

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/account/PushSettingListFragment$2;->c(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[ILandroid/view/View;)V

    return-void
.end method
