.class public final Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "CheckInBottomBarLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;


# direct methods
.method constructor <init>(Lcom/narvii/checkin/CheckInBottomBarLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    const-string p1, "profile"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$profileListener$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    return-void
.end method
