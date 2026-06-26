.class Lcom/narvii/master/BottomDrawerViewHelper$1;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "BottomDrawerViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/BottomDrawerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/BottomDrawerViewHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/BottomDrawerViewHelper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$1;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(I)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNoticeCountChanged(I)V

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/narvii/master/BottomDrawerViewHelper$1;->this$0:Lcom/narvii/master/BottomDrawerViewHelper;

    iget-object p1, p1, Lcom/narvii/master/BottomDrawerViewHelper;->drawerContainer:Lcom/narvii/widget/BottomDrawerContainer;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/narvii/widget/BottomDrawerContainer;->dismissView()V

    :cond_0
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    return-void
.end method
