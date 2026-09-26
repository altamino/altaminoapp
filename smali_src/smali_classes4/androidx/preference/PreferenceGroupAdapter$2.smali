.class Landroidx/preference/PreferenceGroupAdapter$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceGroupAdapter;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceGroupAdapter;

.field final synthetic val$comparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

.field final synthetic val$oldVisibleList:Ljava/util/List;

.field final synthetic val$visiblePreferenceList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->this$0:Landroidx/preference/PreferenceGroupAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Landroidx/preference/Preference;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Landroidx/preference/Preference;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;->a(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public b(II)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Landroidx/preference/Preference;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Landroidx/preference/Preference;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;->b(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
