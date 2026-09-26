.class Lcom/google/android/material/chip/ChipGroup$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;

.field final synthetic val$listener:Lcom/google/android/material/chip/ChipGroup$d;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$b;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/google/android/material/chip/ChipGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/chip/ChipGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$b;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/material/chip/ChipGroup;->f(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/internal/a;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->l()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$b;->this$0:Lcom/google/android/material/chip/ChipGroup;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    .line 19
    const/4 p1, 0x0

    .line 20
    throw p1
.end method
