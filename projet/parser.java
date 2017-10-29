
//----------------------------------------------------
// The following code was generated by CUP v0.10k TUM Edition 20050516
// Wed Oct 25 14:54:04 CEST 2017
//----------------------------------------------------

import java_cup.runtime.*;
import java.util.HashMap;

/** CUP v0.10k TUM Edition 20050516 generated parser.
  * @version Wed Oct 25 14:54:04 CEST 2017
  */
public class parser extends java_cup.runtime.lr_parser {

  /** Default constructor. */
  public parser() {super();}

  /** Constructor which sets the default scanner. */
  public parser(java_cup.runtime.Scanner s) {super(s);}

  /** Production table. */
  protected static final short _production_table[][] = 
    unpackFromStrings(new String[] {
    "\000\020\000\002\006\002\000\002\005\006\000\002\002" +
    "\004\000\002\005\005\000\002\007\002\000\002\005\006" +
    "\000\002\005\003\000\002\005\002\000\002\004\005\000" +
    "\002\003\005\000\002\003\005\000\002\003\005\000\002" +
    "\003\003\000\002\003\003\000\002\003\004\000\002\003" +
    "\003" });

  /** Access to production table. */
  public short[][] production_table() {return _production_table;}

  /** Parse-action table. */
  protected static final short[][] _action_table = 
    unpackFromStrings(new String[] {
    "\000\036\000\022\002\ufffa\004\006\005\011\010\014\011" +
    "\012\012\005\014\004\015\010\001\002\000\012\006\ufff2" +
    "\007\ufff2\015\ufff2\016\037\001\002\000\014\004\006\005" +
    "\011\010\014\012\005\014\022\001\002\000\012\006\ufff5" +
    "\007\ufff5\013\ufff5\015\ufff5\001\002\000\004\002\034\001" +
    "\002\000\004\002\ufffb\001\002\000\012\006\ufff4\007\ufff4" +
    "\013\ufff4\015\ufff4\001\002\000\004\015\ufffd\001\002\000" +
    "\004\015\027\001\002\000\014\004\006\005\011\010\014" +
    "\012\005\014\022\001\002\000\010\006\016\007\020\015" +
    "\001\001\002\000\014\004\006\005\011\010\014\012\005" +
    "\014\022\001\002\000\004\015\023\001\002\000\014\004" +
    "\006\005\011\010\014\012\005\014\022\001\002\000\012" +
    "\006\ufff7\007\ufff7\013\ufff7\015\ufff7\001\002\000\012\006" +
    "\ufff2\007\ufff2\013\ufff2\015\ufff2\001\002\000\022\002\ufffa" +
    "\004\006\005\011\010\014\011\012\012\005\014\004\015" +
    "\010\001\002\000\004\002\000\001\002\000\012\006\ufff8" +
    "\007\ufff8\013\ufff8\015\ufff8\001\002\000\012\006\016\007" +
    "\020\013\ufff3\015\ufff3\001\002\000\022\002\ufffa\004\006" +
    "\005\011\010\014\011\012\012\005\014\004\015\010\001" +
    "\002\000\004\002\ufffe\001\002\000\004\015\032\001\002" +
    "\000\022\002\ufffa\004\006\005\011\010\014\011\012\012" +
    "\005\014\004\015\010\001\002\000\004\002\ufffc\001\002" +
    "\000\004\002\uffff\001\002\000\010\006\016\007\020\013" +
    "\036\001\002\000\012\006\ufff6\007\ufff6\013\ufff6\015\ufff6" +
    "\001\002\000\014\004\006\005\011\010\014\012\005\014" +
    "\022\001\002\000\010\006\016\007\020\015\ufff9\001\002" +
    "" });

  /** Access to parse-action table. */
  public short[][] action_table() {return _action_table;}

  /** <code>reduce_goto</code> table. */
  protected static final short[][] _reduce_table = 
    unpackFromStrings(new String[] {
    "\000\036\000\010\003\014\004\012\005\006\001\001\000" +
    "\002\001\001\000\004\003\034\001\001\000\002\001\001" +
    "\000\002\001\001\000\002\001\001\000\002\001\001\000" +
    "\004\007\030\001\001\000\002\001\001\000\004\003\025" +
    "\001\001\000\004\006\016\001\001\000\004\003\024\001" +
    "\001\000\002\001\001\000\004\003\020\001\001\000\002" +
    "\001\001\000\002\001\001\000\010\003\014\004\012\005" +
    "\023\001\001\000\002\001\001\000\002\001\001\000\002" +
    "\001\001\000\010\003\014\004\012\005\027\001\001\000" +
    "\002\001\001\000\002\001\001\000\010\003\014\004\012" +
    "\005\032\001\001\000\002\001\001\000\002\001\001\000" +
    "\002\001\001\000\002\001\001\000\004\003\037\001\001" +
    "\000\002\001\001" });

  /** Access to <code>reduce_goto</code> table. */
  public short[][] reduce_table() {return _reduce_table;}

  /** Instance of action encapsulation class. */
  protected CUP$parser$actions action_obj;

  /** Action encapsulation object initializer. */
  protected void init_actions()
    {
      action_obj = new CUP$parser$actions(this);
    }

  /** Invoke a user supplied parse action. */
  public java_cup.runtime.Symbol do_action(
    int                        act_num,
    java_cup.runtime.lr_parser parser,
    java.util.Stack            stack,
    int                        top)
    throws java.lang.Exception
  {
    /* call code in generated class */
    return action_obj.CUP$parser$do_action(act_num, parser, stack, top);
  }

  /** Indicates start state. */
  public int start_state() {return 0;}
  /** Indicates start production. */
  public int start_production() {return 2;}

  /** <code>EOF</code> Symbol index. */
  public int EOF_sym() {return 0;}

  /** <code>error</code> Symbol index. */
  public int error_sym() {return 1;}



	public static void main(String args[]) throws Exception{
			new parser(new Yylex(System.in)).parse();
	}

}

/** Cup generated class to encapsulate user supplied action code.*/
class CUP$parser$actions {


	public class TabSym{
		HashMap<String,Boolean> tab;

		public TabSym(){
			tab = new HashMap<String,Boolean>();
		}

		public TabSym add(String s,Boolean b){
			tab.put(s,b);
			return this;
		}

		public Boolean getBool(String s){
			return tab.get(s);
		}

		@Override
		public String toString(){
			String res = new String();
			res = res + "==> les valeurs des variables sont :\n";
			for(String key : tab.keySet()){
				res = res + key + " vaut " + tab.get(key) + "\n";
			}
			return res;
		}
	}

	TabSym tabSym = new TabSym();


  private final parser parser;

  /** Constructor */
  CUP$parser$actions(parser parser) {
    this.parser = parser;
  }

  /** Method with the actual generated action code. */
  public final java_cup.runtime.Symbol CUP$parser$do_action(
    int                        CUP$parser$act_num,
    java_cup.runtime.lr_parser CUP$parser$parser,
    java.util.Stack            CUP$parser$stack,
    int                        CUP$parser$top)
    throws java.lang.Exception
    {
      /* Symbol object for return from actions */
      java_cup.runtime.Symbol CUP$parser$result;

      /* select the action based on the action number */
      switch (CUP$parser$act_num)
        {
          /*. . . . . . . . . . . . . . . . . . . .*/
          case 15: // logique ::= IDENT 
            {
              Boolean RESULT = null;
		int ileft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left;
		int iright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right;
		String i = (String)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-0)).value;
		 RESULT = tabSym.getBool(i) ;
              CUP$parser$result = new java_cup.runtime.Symbol(1/*logique*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 14: // logique ::= NOT logique 
            {
              Boolean RESULT = null;
		int lleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left;
		int lright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right;
		Boolean l = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-0)).value;
		RESULT = !l;
              CUP$parser$result = new java_cup.runtime.Symbol(1/*logique*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 13: // logique ::= FALSE 
            {
              Boolean RESULT = null;
		RESULT = false;
              CUP$parser$result = new java_cup.runtime.Symbol(1/*logique*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 12: // logique ::= TRUE 
            {
              Boolean RESULT = null;
		 RESULT = true;
              CUP$parser$result = new java_cup.runtime.Symbol(1/*logique*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 11: // logique ::= PARO logique PARF 
            {
              Boolean RESULT = null;
		int lleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left;
		int lright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).right;
		Boolean l = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-1)).value;
		RESULT = l;
              CUP$parser$result = new java_cup.runtime.Symbol(1/*logique*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 10: // logique ::= logique OR logique 
            {
              Boolean RESULT = null;
		int l1left = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left;
		int l1right = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).right;
		Boolean l1 = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-2)).value;
		int l2left = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left;
		int l2right = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right;
		Boolean l2 = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-0)).value;
		RESULT = (l1 | l2);
              CUP$parser$result = new java_cup.runtime.Symbol(1/*logique*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 9: // logique ::= logique AND logique 
            {
              Boolean RESULT = null;
		int l1left = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left;
		int l1right = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).right;
		Boolean l1 = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-2)).value;
		int l2left = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left;
		int l2right = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right;
		Boolean l2 = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-0)).value;
		 RESULT = ( l1 & l2);
              CUP$parser$result = new java_cup.runtime.Symbol(1/*logique*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 8: // affect ::= IDENT EQ logique 
            {
              Object RESULT = null;
		int idleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left;
		int idright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).right;
		String id = (String)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-2)).value;
		int lleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left;
		int lright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right;
		Boolean l = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-0)).value;
		 tabSym.add(id,l);
									System.out.println("==> "+id+" vaut "+l);
              CUP$parser$result = new java_cup.runtime.Symbol(2/*affect*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 7: // prog ::= 
            {
              Object RESULT = null;
		System.out.println("==> Au revoir");
              CUP$parser$result = new java_cup.runtime.Symbol(3/*prog*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 6: // prog ::= NL 
            {
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(3/*prog*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 5: // prog ::= PRINT NT$1 NL prog 
            {
              Object RESULT = null;
              // propagate RESULT from NT$1
              if ( ((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-2)).value != null )
                RESULT = (Object) ((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-2)).value;

              CUP$parser$result = new java_cup.runtime.Symbol(3/*prog*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 4: // NT$1 ::= 
            {
              Object RESULT = null;
 System.out.print(tabSym.toString());
              CUP$parser$result = new java_cup.runtime.Symbol(5/*NT$1*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 3: // prog ::= affect NL prog 
            {
              Object RESULT = null;

              CUP$parser$result = new java_cup.runtime.Symbol(3/*prog*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-2)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 2: // $START ::= prog EOF 
            {
              Object RESULT = null;
		int start_valleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left;
		int start_valright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).right;
		Object start_val = (Object)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-1)).value;
		RESULT = start_val;
              CUP$parser$result = new java_cup.runtime.Symbol(0/*$START*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-1)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          /* ACCEPT */
          CUP$parser$parser.done_parsing();
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 1: // prog ::= logique NT$0 NL prog 
            {
              Object RESULT = null;
              // propagate RESULT from NT$0
              if ( ((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-2)).value != null )
                RESULT = (Object) ((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-2)).value;
		int lleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)).left;
		int lright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)).right;
		Boolean l = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-3)).value;

              CUP$parser$result = new java_cup.runtime.Symbol(3/*prog*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-3)).left, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /*. . . . . . . . . . . . . . . . . . . .*/
          case 0: // NT$0 ::= 
            {
              Object RESULT = null;
		int lleft = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).left;
		int lright = ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right;
		Boolean l = (Boolean)((java_cup.runtime.Symbol) CUP$parser$stack.elementAt(CUP$parser$top-0)).value;
 System.out.println("==> " +l);
              CUP$parser$result = new java_cup.runtime.Symbol(4/*NT$0*/, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, ((java_cup.runtime.Symbol)CUP$parser$stack.elementAt(CUP$parser$top-0)).right, RESULT);
            }
          return CUP$parser$result;

          /* . . . . . .*/
          default:
            throw new Exception(
               "Invalid action number found in internal parse table");

        }
    }
}
