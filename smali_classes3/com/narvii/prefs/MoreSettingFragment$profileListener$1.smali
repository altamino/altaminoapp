.class public final Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "MoreSettingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/MoreSettingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/MoreSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/MoreSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    const-string p1, "profile"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$profileListener$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.BaseAdapter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
