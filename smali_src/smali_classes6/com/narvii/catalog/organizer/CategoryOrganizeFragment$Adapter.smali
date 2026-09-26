.class Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$Adapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/ItemCategory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ItemCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/organizer/CategoryOrganizeFragment$Adapter;->this$0:Lcom/narvii/catalog/organizer/CategoryOrganizeFragment;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/model/ItemCategory;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d06dd

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    const p3, 0x7f0a0315

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 26
    .line 27
    .line 28
    const p3, 0x7f0a0e51

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    check-cast p3, Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-object p2
.end method
