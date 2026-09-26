.class public final synthetic Lcom/narvii/master/search/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnClearClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/GlobalSearchTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/m;->a:Lcom/narvii/master/search/GlobalSearchTabFragment;

    return-void
.end method


# virtual methods
.method public final onClearClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/m;->a:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->n(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    return-void
.end method
