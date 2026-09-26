.class Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;->val$o:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter$1;->val$o:Ljava/lang/Object;

    .line 3
    move-object p2, p1

    .line 4
    .line 5
    check-cast p2, Lcom/narvii/list/prefs/PrefsToggle;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    return-void
.end method
