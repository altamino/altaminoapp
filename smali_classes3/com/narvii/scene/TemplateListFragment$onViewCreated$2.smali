.class public final Lcom/narvii/scene/TemplateListFragment$onViewCreated$2;
.super Lcom/narvii/util/OnPreventRepeatedClickListener;
.source "TemplateListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/TemplateListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/TemplateListFragment;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$2;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    return-void
.end method
