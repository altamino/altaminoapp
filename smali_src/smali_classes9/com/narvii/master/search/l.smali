.class public final synthetic Lcom/narvii/master/search/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

.field public final synthetic b:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/l;->a:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    iput-object p2, p0, Lcom/narvii/master/search/l;->b:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/l;->a:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    iget-object v1, p0, Lcom/narvii/master/search/l;->b:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0, v1, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->g(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;Lcom/narvii/master/search/GlobalSearchOthersResultFragment;Landroid/view/View;)V

    return-void
.end method
