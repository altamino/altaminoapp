.class Landroidx/preference/DropDownPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/DropDownPreference;


# direct methods
.method constructor <init>(Landroidx/preference/DropDownPreference;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/preference/DropDownPreference$1;->this$0:Landroidx/preference/DropDownPreference;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    .line 2
    if-ltz p3, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/preference/DropDownPreference$1;->this$0:Landroidx/preference/DropDownPreference;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->H0()[Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    aget-object p1, p1, p3

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Landroidx/preference/DropDownPreference$1;->this$0:Landroidx/preference/DropDownPreference;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/preference/ListPreference;->I0()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Landroidx/preference/DropDownPreference$1;->this$0:Landroidx/preference/DropDownPreference;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    .line 32
    move-result p2

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/preference/DropDownPreference$1;->this$0:Landroidx/preference/DropDownPreference;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->K0(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
