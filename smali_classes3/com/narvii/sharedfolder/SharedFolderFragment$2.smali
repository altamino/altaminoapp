.class Lcom/narvii/sharedfolder/SharedFolderFragment$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SharedFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sharedfolder/SharedFolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderFragment;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedFolderFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedFolderFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/sharedfolder/SharedFolderFragment;->updateTabView(I)V

    return-void
.end method
