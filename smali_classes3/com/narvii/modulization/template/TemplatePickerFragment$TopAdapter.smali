.class Lcom/narvii/modulization/template/TemplatePickerFragment$TopAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "TemplatePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/modulization/template/TemplatePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/modulization/template/TemplatePickerFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/narvii/modulization/template/TemplatePickerFragment$TopAdapter;->this$0:Lcom/narvii/modulization/template/TemplatePickerFragment;

    .line 130
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 135
    sget p1, Lcom/narvii/lib/R$layout;->amino_template_picker_list_top:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
