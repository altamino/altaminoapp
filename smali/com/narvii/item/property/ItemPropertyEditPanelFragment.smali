.class public Lcom/narvii/item/property/ItemPropertyEditPanelFragment;
.super Lcom/narvii/app/NVFragment;
.source "ItemPropertyEditPanelFragment.java"


# instance fields
.field panel:Lcom/narvii/item/property/ItemPropertyEditPanel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 27
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanelFragment;->panel:Lcom/narvii/item/property/ItemPropertyEditPanel;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0904ba

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/item/property/ItemPropertyEditPanel;->setup(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b058f

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/item/property/ItemPropertyEditPanel;

    iput-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanelFragment;->panel:Lcom/narvii/item/property/ItemPropertyEditPanel;

    .line 21
    iget-object p1, p0, Lcom/narvii/item/property/ItemPropertyEditPanelFragment;->panel:Lcom/narvii/item/property/ItemPropertyEditPanel;

    return-object p1
.end method
