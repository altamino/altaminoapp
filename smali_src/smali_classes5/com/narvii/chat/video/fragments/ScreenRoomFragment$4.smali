.class Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->z(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;II)I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->B(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;I)V

    .line 10
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$4;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->z(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;II)I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->B(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;I)V

    .line 11
    return-void
.end method
