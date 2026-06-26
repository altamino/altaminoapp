.class final Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "GlobalSearchBaseFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$1;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$1;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
