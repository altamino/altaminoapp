.class public final Lcom/narvii/checkin/CheckInBottomBarLayout$1;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/checkin/CheckInBottomBarLayout;-><init>(Landroid/content/Context;)V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 6
    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 0
    .param p1    # Lcom/narvii/model/CheckInHistory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 6
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0
    .param p2    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "profile"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/checkin/CheckInBottomBarLayout$1;->this$0:Lcom/narvii/checkin/CheckInBottomBarLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/checkin/CheckInBottomBarLayout;->updateViews()V

    .line 11
    return-void
.end method
