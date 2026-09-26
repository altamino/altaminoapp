.class Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 3
    .line 4
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;->this$0:Lcom/narvii/feed/featured/MoreFeaturedListAdapter;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->g(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V

    .line 17
    return-void
.end method
