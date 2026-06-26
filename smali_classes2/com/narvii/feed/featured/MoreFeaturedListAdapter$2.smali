.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;
.super Ljava/lang/Object;
.source "MoreFeaturedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 178
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    invoke-static {p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->access$100(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V

    return-void
.end method
