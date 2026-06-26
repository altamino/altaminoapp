.class Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;
.super Ljava/lang/Object;
.source "CommunityPushSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    iput-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 370
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;->val$o:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/narvii/list/prefs/PrefsToggle;

    iget-object p2, p2, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method
