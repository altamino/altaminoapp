.class Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;
.super Ljava/lang/Object;
.source "ScreenRoomFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 395
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-static {p2, p1, p3}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$300(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;II)I

    move-result p1

    invoke-static {p2, p1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$400(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;I)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$300(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->access$400(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;I)V

    return-void
.end method
