package org.jsoup.select;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.b;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.parser.TokenQueue;
import org.slf4j.c;

/* JADX INFO: loaded from: classes6.dex */
public class QueryParser {
    private List<Evaluator> evals = new ArrayList();
    private String query;
    private TokenQueue tq;
    private static final String[] combinators = {",", ">", c.ANY_NON_NULL_MARKER, "~", " "};
    private static final String[] AttributeEvals = {"=", "!=", "^=", "$=", "*=", "~="};
    private static final Pattern NTH_AB = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
    private static final Pattern NTH_B = Pattern.compile("([+-])?(\\d+)");

    public static Evaluator parse(String str) {
        try {
            return new QueryParser(str).parse();
        } catch (IllegalArgumentException e) {
            throw new Selector.SelectorParseException(e.getMessage(), new Object[0]);
        }
    }

    private void allElements() {
        this.evals.add(new Evaluator.AllElements());
    }

    private void byAttribute() {
        TokenQueue tokenQueue = new TokenQueue(this.tq.chompBalanced(b.BEGIN_LIST, b.END_LIST));
        String strConsumeToAny = tokenQueue.consumeToAny(AttributeEvals);
        Validate.notEmpty(strConsumeToAny);
        tokenQueue.consumeWhitespace();
        if (tokenQueue.isEmpty()) {
            if (strConsumeToAny.startsWith("^")) {
                this.evals.add(new Evaluator.AttributeStarting(strConsumeToAny.substring(1)));
                return;
            } else {
                this.evals.add(new Evaluator.Attribute(strConsumeToAny));
                return;
            }
        }
        if (tokenQueue.matchChomp("=")) {
            this.evals.add(new Evaluator.AttributeWithValue(strConsumeToAny, tokenQueue.remainder()));
            return;
        }
        if (tokenQueue.matchChomp("!=")) {
            this.evals.add(new Evaluator.AttributeWithValueNot(strConsumeToAny, tokenQueue.remainder()));
            return;
        }
        if (tokenQueue.matchChomp("^=")) {
            this.evals.add(new Evaluator.AttributeWithValueStarting(strConsumeToAny, tokenQueue.remainder()));
            return;
        }
        if (tokenQueue.matchChomp("$=")) {
            this.evals.add(new Evaluator.AttributeWithValueEnding(strConsumeToAny, tokenQueue.remainder()));
        } else if (tokenQueue.matchChomp("*=")) {
            this.evals.add(new Evaluator.AttributeWithValueContaining(strConsumeToAny, tokenQueue.remainder()));
        } else {
            if (!tokenQueue.matchChomp("~=")) {
                throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.query, tokenQueue.remainder());
            }
            this.evals.add(new Evaluator.AttributeWithValueMatching(strConsumeToAny, Pattern.compile(tokenQueue.remainder())));
        }
    }

    private void byClass() {
        String strConsumeCssIdentifier = this.tq.consumeCssIdentifier();
        Validate.notEmpty(strConsumeCssIdentifier);
        this.evals.add(new Evaluator.Class(strConsumeCssIdentifier.trim()));
    }

    private void byId() {
        String strConsumeCssIdentifier = this.tq.consumeCssIdentifier();
        Validate.notEmpty(strConsumeCssIdentifier);
        this.evals.add(new Evaluator.Id(strConsumeCssIdentifier));
    }

    private void byTag() {
        String strConsumeElementSelector = this.tq.consumeElementSelector();
        Validate.notEmpty(strConsumeElementSelector);
        if (strConsumeElementSelector.startsWith("*|")) {
            this.evals.add(new CombiningEvaluator.Or(new Evaluator.Tag(Normalizer.normalize(strConsumeElementSelector)), new Evaluator.TagEndsWith(Normalizer.normalize(strConsumeElementSelector.replace("*|", ":")))));
            return;
        }
        if (strConsumeElementSelector.contains("|")) {
            strConsumeElementSelector = strConsumeElementSelector.replace("|", ":");
        }
        this.evals.add(new Evaluator.Tag(strConsumeElementSelector.trim()));
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0048  */
    /* JADX WARN: Code duplicated, block: B:13:0x0059  */
    /* JADX WARN: Code duplicated, block: B:15:0x005d  */
    /* JADX WARN: Code duplicated, block: B:16:0x006e  */
    /* JADX WARN: Code duplicated, block: B:18:0x0072  */
    /* JADX WARN: Code duplicated, block: B:19:0x0083  */
    /* JADX WARN: Code duplicated, block: B:21:0x0087  */
    /* JADX WARN: Code duplicated, block: B:22:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x009a  */
    /* JADX WARN: Code duplicated, block: B:25:0x009e  */
    /* JADX WARN: Code duplicated, block: B:26:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c0  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00c0, please report this as an issue */
    private void combinator(char c7) {
        Evaluator and;
        Evaluator evaluator;
        boolean z6;
        CombiningEvaluator.Or or;
        Evaluator evaluator2;
        CombiningEvaluator.And and2;
        CombiningEvaluator.And and3;
        CombiningEvaluator.And and4;
        Evaluator evaluator3;
        CombiningEvaluator.And and5;
        this.tq.consumeWhitespace();
        Evaluator evaluator4 = parse(consumeSubQuery());
        if (this.evals.size() == 1) {
            and = this.evals.get(0);
            if ((and instanceof CombiningEvaluator.Or) && c7 != ',') {
                z6 = true;
                evaluator = and;
                and = ((CombiningEvaluator.Or) and).rightMostEvaluator();
            }
            this.evals.clear();
            if (c7 == '>') {
                and5 = new CombiningEvaluator.And(evaluator4, new StructuralEvaluator.ImmediateParent(and));
            } else if (c7 == ' ') {
                and4 = new CombiningEvaluator.And(evaluator4, new StructuralEvaluator.Parent(and));
            } else if (c7 == '+') {
                and3 = new CombiningEvaluator.And(evaluator4, new StructuralEvaluator.ImmediatePreviousSibling(and));
            } else if (c7 == '~') {
                and2 = new CombiningEvaluator.And(evaluator4, new StructuralEvaluator.PreviousSibling(and));
            } else {
                if (c7 == ',') {
                    throw new Selector.SelectorParseException("Unknown combinator: " + c7, new Object[0]);
                }
                if (and instanceof CombiningEvaluator.Or) {
                    CombiningEvaluator.Or or2 = (CombiningEvaluator.Or) and;
                    or2.add(evaluator4);
                    evaluator2 = or2;
                } else {
                    or = new CombiningEvaluator.Or();
                    or.add(and);
                    or.add(evaluator4);
                }
            }
            if (z6) {
                evaluator2 = or;
                evaluator2 = and2;
                evaluator2 = and3;
                evaluator2 = and4;
                evaluator2 = and5;
                ((CombiningEvaluator.Or) evaluator).replaceRightMostEvaluator(evaluator2);
                evaluator3 = evaluator;
            } else {
                evaluator2 = or;
                evaluator2 = and2;
                evaluator2 = and3;
                evaluator2 = and4;
                evaluator2 = and5;
                evaluator3 = evaluator2;
            }
            this.evals.add(evaluator3);
        }
        and = new CombiningEvaluator.And(this.evals);
        evaluator = and;
        z6 = false;
        this.evals.clear();
        if (c7 == '>') {
            and5 = new CombiningEvaluator.And(evaluator4, new StructuralEvaluator.ImmediateParent(and));
        } else if (c7 == ' ') {
            and4 = new CombiningEvaluator.And(evaluator4, new StructuralEvaluator.Parent(and));
        } else if (c7 == '+') {
            and3 = new CombiningEvaluator.And(evaluator4, new StructuralEvaluator.ImmediatePreviousSibling(and));
        } else if (c7 == '~') {
            and2 = new CombiningEvaluator.And(evaluator4, new StructuralEvaluator.PreviousSibling(and));
        } else {
            if (c7 == ',') {
                throw new Selector.SelectorParseException("Unknown combinator: " + c7, new Object[0]);
            }
            if (and instanceof CombiningEvaluator.Or) {
                CombiningEvaluator.Or or3 = (CombiningEvaluator.Or) and;
                or3.add(evaluator4);
                evaluator2 = or3;
            } else {
                or = new CombiningEvaluator.Or();
                or.add(and);
                or.add(evaluator4);
            }
        }
        if (z6) {
            evaluator2 = or;
            evaluator2 = and2;
            evaluator2 = and3;
            evaluator2 = and4;
            evaluator2 = and5;
            ((CombiningEvaluator.Or) evaluator).replaceRightMostEvaluator(evaluator2);
            evaluator3 = evaluator;
        } else {
            evaluator2 = or;
            evaluator2 = and2;
            evaluator2 = and3;
            evaluator2 = and4;
            evaluator2 = and5;
            evaluator3 = evaluator2;
        }
        this.evals.add(evaluator3);
    }

    private int consumeIndex() {
        String strTrim = this.tq.chompTo(")").trim();
        Validate.isTrue(StringUtil.isNumeric(strTrim), "Index must be numeric");
        return Integer.parseInt(strTrim);
    }

    private String consumeSubQuery() {
        StringBuilder sb = new StringBuilder();
        while (!this.tq.isEmpty()) {
            if (this.tq.matches("(")) {
                sb.append("(");
                sb.append(this.tq.chompBalanced('(', ')'));
                sb.append(")");
            } else if (this.tq.matches("[")) {
                sb.append("[");
                sb.append(this.tq.chompBalanced(b.BEGIN_LIST, b.END_LIST));
                sb.append("]");
            } else {
                if (this.tq.matchesAny(combinators)) {
                    break;
                }
                sb.append(this.tq.consume());
            }
        }
        return sb.toString();
    }

    private void contains(boolean z6) {
        this.tq.consume(z6 ? ":containsOwn" : ":contains");
        String strUnescape = TokenQueue.unescape(this.tq.chompBalanced('(', ')'));
        Validate.notEmpty(strUnescape, ":contains(text) query must not be empty");
        if (z6) {
            this.evals.add(new Evaluator.ContainsOwnText(strUnescape));
        } else {
            this.evals.add(new Evaluator.ContainsText(strUnescape));
        }
    }

    private void containsData() {
        this.tq.consume(":containsData");
        String strUnescape = TokenQueue.unescape(this.tq.chompBalanced('(', ')'));
        Validate.notEmpty(strUnescape, ":containsData(text) query must not be empty");
        this.evals.add(new Evaluator.ContainsData(strUnescape));
    }

    private void cssNthChild(boolean z6, boolean z10) {
        String strNormalize = Normalizer.normalize(this.tq.chompTo(")"));
        Matcher matcher = NTH_AB.matcher(strNormalize);
        Matcher matcher2 = NTH_B.matcher(strNormalize);
        int i10 = 2;
        int i11 = 1;
        if (!"odd".equals(strNormalize)) {
            if ("even".equals(strNormalize)) {
                i11 = 0;
            } else if (matcher.matches()) {
                int i12 = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
                i11 = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
                i10 = i12;
            } else {
                if (!matcher2.matches()) {
                    throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", strNormalize);
                }
                i11 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                i10 = 0;
            }
        }
        if (z10) {
            if (z6) {
                this.evals.add(new Evaluator.IsNthLastOfType(i10, i11));
                return;
            } else {
                this.evals.add(new Evaluator.IsNthOfType(i10, i11));
                return;
            }
        }
        if (z6) {
            this.evals.add(new Evaluator.IsNthLastChild(i10, i11));
        } else {
            this.evals.add(new Evaluator.IsNthChild(i10, i11));
        }
    }

    private void findElements() {
        if (this.tq.matchChomp("#")) {
            byId();
            return;
        }
        if (this.tq.matchChomp(".")) {
            byClass();
            return;
        }
        if (this.tq.matchesWord() || this.tq.matches("*|")) {
            byTag();
            return;
        }
        if (this.tq.matches("[")) {
            byAttribute();
            return;
        }
        if (this.tq.matchChomp("*")) {
            allElements();
            return;
        }
        if (this.tq.matchChomp(":lt(")) {
            indexLessThan();
            return;
        }
        if (this.tq.matchChomp(":gt(")) {
            indexGreaterThan();
            return;
        }
        if (this.tq.matchChomp(":eq(")) {
            indexEquals();
            return;
        }
        if (this.tq.matches(":has(")) {
            has();
            return;
        }
        if (this.tq.matches(":contains(")) {
            contains(false);
            return;
        }
        if (this.tq.matches(":containsOwn(")) {
            contains(true);
            return;
        }
        if (this.tq.matches(":containsData(")) {
            containsData();
            return;
        }
        if (this.tq.matches(":matches(")) {
            matches(false);
            return;
        }
        if (this.tq.matches(":matchesOwn(")) {
            matches(true);
            return;
        }
        if (this.tq.matches(":not(")) {
            not();
            return;
        }
        if (this.tq.matchChomp(":nth-child(")) {
            cssNthChild(false, false);
            return;
        }
        if (this.tq.matchChomp(":nth-last-child(")) {
            cssNthChild(true, false);
            return;
        }
        if (this.tq.matchChomp(":nth-of-type(")) {
            cssNthChild(false, true);
            return;
        }
        if (this.tq.matchChomp(":nth-last-of-type(")) {
            cssNthChild(true, true);
            return;
        }
        if (this.tq.matchChomp(":first-child")) {
            this.evals.add(new Evaluator.IsFirstChild());
            return;
        }
        if (this.tq.matchChomp(":last-child")) {
            this.evals.add(new Evaluator.IsLastChild());
            return;
        }
        if (this.tq.matchChomp(":first-of-type")) {
            this.evals.add(new Evaluator.IsFirstOfType());
            return;
        }
        if (this.tq.matchChomp(":last-of-type")) {
            this.evals.add(new Evaluator.IsLastOfType());
            return;
        }
        if (this.tq.matchChomp(":only-child")) {
            this.evals.add(new Evaluator.IsOnlyChild());
            return;
        }
        if (this.tq.matchChomp(":only-of-type")) {
            this.evals.add(new Evaluator.IsOnlyOfType());
            return;
        }
        if (this.tq.matchChomp(":empty")) {
            this.evals.add(new Evaluator.IsEmpty());
        } else if (this.tq.matchChomp(":root")) {
            this.evals.add(new Evaluator.IsRoot());
        } else {
            if (!this.tq.matchChomp(":matchText")) {
                throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.query, this.tq.remainder());
            }
            this.evals.add(new Evaluator.MatchText());
        }
    }

    private void has() {
        this.tq.consume(":has");
        String strChompBalanced = this.tq.chompBalanced('(', ')');
        Validate.notEmpty(strChompBalanced, ":has(el) subselect must not be empty");
        this.evals.add(new StructuralEvaluator.Has(parse(strChompBalanced)));
    }

    private void indexEquals() {
        this.evals.add(new Evaluator.IndexEquals(consumeIndex()));
    }

    private void indexGreaterThan() {
        this.evals.add(new Evaluator.IndexGreaterThan(consumeIndex()));
    }

    private void indexLessThan() {
        this.evals.add(new Evaluator.IndexLessThan(consumeIndex()));
    }

    private void matches(boolean z6) {
        this.tq.consume(z6 ? ":matchesOwn" : ":matches");
        String strChompBalanced = this.tq.chompBalanced('(', ')');
        Validate.notEmpty(strChompBalanced, ":matches(regex) query must not be empty");
        if (z6) {
            this.evals.add(new Evaluator.MatchesOwn(Pattern.compile(strChompBalanced)));
        } else {
            this.evals.add(new Evaluator.Matches(Pattern.compile(strChompBalanced)));
        }
    }

    private void not() {
        this.tq.consume(":not");
        String strChompBalanced = this.tq.chompBalanced('(', ')');
        Validate.notEmpty(strChompBalanced, ":not(selector) subselect must not be empty");
        this.evals.add(new StructuralEvaluator.Not(parse(strChompBalanced)));
    }

    private QueryParser(String str) {
        this.query = str;
        this.tq = new TokenQueue(str);
    }

    Evaluator parse() {
        this.tq.consumeWhitespace();
        if (this.tq.matchesAny(combinators)) {
            this.evals.add(new StructuralEvaluator.Root());
            combinator(this.tq.consume());
        } else {
            findElements();
        }
        while (!this.tq.isEmpty()) {
            boolean zConsumeWhitespace = this.tq.consumeWhitespace();
            if (this.tq.matchesAny(combinators)) {
                combinator(this.tq.consume());
            } else if (zConsumeWhitespace) {
                combinator(' ');
            } else {
                findElements();
            }
        }
        if (this.evals.size() == 1) {
            return this.evals.get(0);
        }
        return new CombiningEvaluator.And(this.evals);
    }
}
